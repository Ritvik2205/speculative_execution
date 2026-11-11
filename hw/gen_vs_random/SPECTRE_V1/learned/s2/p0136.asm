.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
lea si, qword ptr [rdi + rax]
add bx, -105
cmp dil, sil
js .bb_0.1
jmp .exit_0
.bb_0.1:
bts rbx, rax
mov rbx, 90
cmp dil, sil
movzx cx, al
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
test al, 70
lea rbx, qword ptr [rax + rbx + 89]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
