.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -73
or di, 0b1000000000000000 # instrumentation
bsf si, di
add al, 27 # instrumentation
sbb ecx, edi
and rax, 363226538
movzx rax, bl
movzx edi, dx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 0
bts di, 1
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rax + rsi]
btr esi, ecx
cmovnbe rbx, rdx
bt ebx, 8
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], bx
xor dl, sil
lea ax, qword ptr [rbx]
bt rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
