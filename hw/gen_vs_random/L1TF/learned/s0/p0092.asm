.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rcx, rax
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
lea rdx, qword ptr [rsi]
xor rsi, 46
btr cx, bx
cmovb bx, bx
jmp .bb_0.1
.bb_0.1:
add dl, -121 # instrumentation
cmovnp eax, ecx
lea edx, qword ptr [rbx]
dec bl
cmp rdi, rsi
not dl
xchg dl, bl
bt rcx, rax
lea edx, qword ptr [rdi]
cmovz esi, ebx
sub rsi, 70
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 26
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
