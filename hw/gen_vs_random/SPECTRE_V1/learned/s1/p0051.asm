.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
lea ebx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
add al, dl
dec cl
mov dl, bl
and bl, 87
add ax, 8031
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
cmp bl, -114
lea di, qword ptr [rax + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
