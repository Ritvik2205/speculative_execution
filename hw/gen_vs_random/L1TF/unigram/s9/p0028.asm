.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], di
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 55
cmovb dx, bx
add sil, -61
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
add al, 121 # instrumentation
setnb sil
cmp cx, 36
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 84
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
xor rdx, rbx
cmovb ax, si
add dl, 27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
sub edi, eax
movsx edi, al
lea cx, qword ptr [rdx + rdx + 9623]
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
