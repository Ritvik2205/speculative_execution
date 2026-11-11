.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
or al, -24
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
test ecx, -1843375753
xor rcx, 71
bt eax, ecx
and al, al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
test ecx, -1843375753
or dil, sil
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
or bl, bl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
