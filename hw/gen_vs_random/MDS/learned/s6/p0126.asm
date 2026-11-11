.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
or bl, -62
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
or ax, 30524
and dil, bl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
test al, 66
xor al, -4
xor dl, bl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
or al, dl
or cl, -77
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and ax, -16061
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
