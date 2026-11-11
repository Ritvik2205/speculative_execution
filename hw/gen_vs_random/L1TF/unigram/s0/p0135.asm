.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edi
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
cmovle rdx, rax
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], eax
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
or rdx, -22
and rsi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rsi]
xor bl, -5
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
bts rcx, rcx
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
lea rax, qword ptr [rax + rsi]
lea rdx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
