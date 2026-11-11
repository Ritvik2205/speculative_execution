.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
btr ax, cx
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and dx, 3
or bl, cl
and dl, dil
or rax, 1020005579
and al, 49
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
test ecx, -1843375753
test al, sil
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and ax, 31082
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
