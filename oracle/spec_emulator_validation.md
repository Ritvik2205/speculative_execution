# Speculative emulator against Spectector-labelled injected pairs

982 pairs, 1265 distinct programs. Emulator: x86_64, lenient memory, window 40, 4 input pairs. Reference: Spectector on the tainted victim (the label of every pair side).
Rule set before the run: pass at 0.95 on both sides with no pair kind under 0.9; kill under 0.9.

**Result: KILL**

| pairs | leaking side: emulator says leak | safe side: emulator says safe |
|---|---|---|
| all | 554/824 (0.672), 158 not runnable | 771/824 (0.936), 158 not runnable |
| fence | 191/299 (0.639), 58 not runnable | 284/300 (0.947), 57 not runnable |
| inject | 194/304 (0.638), 60 not runnable | 286/303 (0.944), 61 not runnable |
| reorder | 169/221 (0.765), 40 not runnable | 201/221 (0.910), 40 not runnable |

## Disagreements by cause

| label | emulator | emulator's reason | pair sides |
|---|---|---|---|
| leak | safe | no speculative difference found | 270 |
| safe | leak | speculative observations differ for architecturally equivalent inputs | 53 |
| leak | unrunnable | did not assemble: <unknown>:0: error: Undefined temporary symbol .Lc1_C
<unknown>:0: error: Undefined temporary symbol .Lc0_C | 48 |
| safe | unrunnable | did not assemble: <unknown>:0: error: Undefined temporary symbol .Lc1_C
<unknown>:0: error: Undefined temporary symbol .Lc0_C | 48 |
| safe | unrunnable | architectural run faulted: Invalid instruction (UC_ERR_INSN_INVALID) | 42 |
| leak | unrunnable | architectural run faulted: Invalid instruction (UC_ERR_INSN_INVALID) | 40 |
| safe | unrunnable | architectural run faulted: Invalid memory mapping (UC_ERR_MAP) | 27 |
| leak | unrunnable | architectural run faulted: Invalid memory mapping (UC_ERR_MAP) | 26 |
| leak | arch_leak | secret observable without speculation in 4/4 pairs | 10 |
| safe | arch_leak | secret observable without speculation in 4/4 pairs | 8 |
| leak | unrunnable | did not assemble: <stdin>:23:6: error: invalid operand for instruction
xorl    %rsi, %rsi
        ^~~~
<stdin>:53:6: error: invalid operand for instruction
xorl    %rsi, %rsi
        ^~~~ | 5 |
| leak | unrunnable | did not assemble: <stdin>:37:17: error: invalid operand for instruction
movzbl  4(%r15), %rbx
                 ^~~~
<stdin>:40:11: error: invalid operand for instruction
andl    $63, %rbx
             ^~~~
<stdin>:43:5 | 3 |
| safe | unrunnable | did not assemble: <stdin>:37:17: error: invalid operand for instruction
movzbl  4(%r15), %rbx
                 ^~~~
<stdin>:40:11: error: invalid operand for instruction
andl    $63, %rbx
             ^~~~
<stdin>:43:5 | 3 |
| safe | unrunnable | did not assemble: <stdin>:23:6: error: invalid operand for instruction
xorl    %rsi, %rsi
        ^~~~
<stdin>:49:6: error: invalid operand for instruction
xorl    %rsi, %rsi
        ^~~~ | 3 |
| leak | unrunnable | did not assemble: <stdin>:26:7: error: invalid operand for instruction
imull   %rcx, %eax
        ^~~~
<stdin>:31:18: error: invalid operand for instruction
movzwl  24(%rsp), %rdx
                  ^~~~
<stdin>:67:7: e | 3 |
| safe | unrunnable | did not assemble: <stdin>:26:7: error: invalid operand for instruction
imull   %rcx, %eax
        ^~~~
<stdin>:31:18: error: invalid operand for instruction
movzwl  24(%rsp), %rdx
                  ^~~~
<stdin>:65:7: e | 3 |
| leak | unrunnable | did not assemble: <stdin>:37:12: error: invalid operand for instruction
movl    %eax, %rsi
              ^~~~
<stdin>:39:7: error: invalid operand for instruction
testl   %rsi, %rsi
        ^~~~
<stdin>:69:12: error: i | 3 |
| leak | unrunnable | did not assemble: <stdin>:25:22: error: invalid operand for instruction
movl    600(%rsp,%r13), %rbx
                        ^~~~
<stdin>:26:12: error: invalid operand for instruction
xorl    %r9d, %rbx
              ^ | 3 |
| safe | unrunnable | did not assemble: <stdin>:25:22: error: invalid operand for instruction
movl    600(%rsp,%r13), %rbx
                        ^~~~
<stdin>:26:12: error: invalid operand for instruction
xorl    %r9d, %rbx
              ^ | 3 |
| leak | unrunnable | did not assemble: <stdin>:34:12: error: invalid operand for instruction
movl    %eax, %rsi
              ^~~~
<stdin>:36:7: error: invalid operand for instruction
testl   %rsi, %rsi
        ^~~~
<stdin>:66:12: error: i | 3 |
| leak | unrunnable | did not assemble: <stdin>:29:7: error: invalid operand for instruction
imull   %rcx, %eax
        ^~~~
<stdin>:34:18: error: invalid operand for instruction
movzwl  24(%rsp), %rdx
                  ^~~~
<stdin>:71:7: e | 3 |
| leak | unrunnable | did not assemble: <stdin>:26:7: error: invalid operand for instruction
imull   %rcx, %eax
        ^~~~
<stdin>:31:18: error: invalid operand for instruction
movzwl  24(%rsp), %rdx
                  ^~~~
<stdin>:69:7: e | 3 |
| leak | unrunnable | did not assemble: <stdin>:23:6: error: invalid operand for instruction
xorl    %rsi, %rsi
        ^~~~
<stdin>:52:6: error: invalid operand for instruction
xorl    %rsi, %rsi
        ^~~~ | 2 |
| safe | unrunnable | did not assemble: <stdin>:23:6: error: invalid operand for instruction
xorl    %rsi, %rsi
        ^~~~
<stdin>:53:6: error: invalid operand for instruction
xorl    %rsi, %rsi
        ^~~~ | 2 |
| leak | unrunnable | did not assemble: <unknown>:0: error: Undefined temporary symbol .Lc1_
<unknown>:0: error: Undefined temporary symbol .Lc0_ | 2 |
| safe | unrunnable | did not assemble: <unknown>:0: error: Undefined temporary symbol .Lc1_
<unknown>:0: error: Undefined temporary symbol .Lc0_ | 2 |
| safe | unrunnable | did not assemble: <stdin>:34:12: error: invalid operand for instruction
movl    %eax, %rsi
              ^~~~
<stdin>:36:7: error: invalid operand for instruction
testl   %rsi, %rsi
        ^~~~
<stdin>:63:12: error: i | 2 |
| safe | unrunnable | did not assemble: <stdin>:23:6: error: invalid operand for instruction
xorl    %rsi, %rsi
        ^~~~
<stdin>:54:6: error: invalid operand for instruction
xorl    %rsi, %rsi
        ^~~~ | 2 |
| leak | unrunnable | did not assemble: <stdin>:23:13: error: invalid operand for instruction
subl    %r15d, %rdi
               ^~~~
<stdin>:25:6: error: invalid operand for instruction
movl    %rdi, 180(%rbx)
        ^~~~
<stdin>:30:10: e | 2 |
| safe | unrunnable | did not assemble: <stdin>:23:13: error: invalid operand for instruction
subl    %r15d, %rdi
               ^~~~
<stdin>:25:6: error: invalid operand for instruction
movl    %rdi, 180(%rbx)
        ^~~~
<stdin>:30:10: e | 2 |
| leak | unrunnable | did not assemble: <stdin>:45:1: error: symbol '.Lc1_gen_spec_end' is already defined
.Lc1_gen_spec_end:
^
<stdin>:77:1: error: symbol '.Lc0_gen_spec_end' is already defined
.Lc0_gen_spec_end:
^ | 2 |
| safe | unrunnable | did not assemble: <stdin>:26:7: error: invalid operand for instruction
imull   %rcx, %eax
        ^~~~
<stdin>:31:18: error: invalid operand for instruction
movzwl  24(%rsp), %rdx
                  ^~~~
<stdin>:67:7: e | 1 |
| safe | unrunnable | did not assemble: <stdin>:26:7: error: invalid operand for instruction
imull   %rcx, %eax
        ^~~~
<stdin>:31:18: error: invalid operand for instruction
movzwl  24(%rsp), %rdx
                  ^~~~
<stdin>:68:7: e | 1 |
| safe | unrunnable | did not assemble: <stdin>:37:12: error: invalid operand for instruction
movl    %eax, %rsi
              ^~~~
<stdin>:39:7: error: invalid operand for instruction
testl   %rsi, %rsi
        ^~~~
<stdin>:69:12: error: i | 1 |
| safe | unrunnable | did not assemble: <stdin>:38:12: error: invalid operand for instruction
movl    %eax, %rsi
              ^~~~
<stdin>:40:7: error: invalid operand for instruction
testl   %rsi, %rsi
        ^~~~
<stdin>:71:12: error: i | 1 |
| safe | unrunnable | did not assemble: <stdin>:34:12: error: invalid operand for instruction
movl    %eax, %rsi
              ^~~~
<stdin>:36:7: error: invalid operand for instruction
testl   %rsi, %rsi
        ^~~~
<stdin>:66:12: error: i | 1 |
| safe | unrunnable | did not assemble: <stdin>:34:12: error: invalid operand for instruction
movl    %eax, %rsi
              ^~~~
<stdin>:36:7: error: invalid operand for instruction
testl   %rsi, %rsi
        ^~~~
<stdin>:67:12: error: i | 1 |
| safe | unrunnable | did not assemble: <stdin>:29:7: error: invalid operand for instruction
imull   %rcx, %eax
        ^~~~
<stdin>:34:18: error: invalid operand for instruction
movzwl  24(%rsp), %rdx
                  ^~~~
<stdin>:71:7: e | 1 |
| safe | unrunnable | did not assemble: <stdin>:30:7: error: invalid operand for instruction
imull   %rcx, %eax
        ^~~~
<stdin>:35:18: error: invalid operand for instruction
movzwl  24(%rsp), %rdx
                  ^~~~
<stdin>:73:7: e | 1 |
| safe | unrunnable | did not assemble: <stdin>:46:1: error: symbol '.Lc1_gen_spec_end' is already defined
.Lc1_gen_spec_end:
^
<stdin>:79:1: error: symbol '.Lc0_gen_spec_end' is already defined
.Lc0_gen_spec_end:
^ | 1 |
| safe | unrunnable | did not assemble: <stdin>:26:7: error: invalid operand for instruction
imull   %rcx, %eax
        ^~~~
<stdin>:31:18: error: invalid operand for instruction
movzwl  24(%rsp), %rdx
                  ^~~~
<stdin>:69:7: e | 1 |
| safe | unrunnable | did not assemble: <stdin>:26:7: error: invalid operand for instruction
imull   %rcx, %eax
        ^~~~
<stdin>:31:18: error: invalid operand for instruction
movzwl  24(%rsp), %rdx
                  ^~~~
<stdin>:70:7: e | 1 |
