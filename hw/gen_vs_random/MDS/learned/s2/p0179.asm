.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
and dl, dil
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmovbe si, cx
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
or bl, 127
and bl, dl
or sil, -78
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
