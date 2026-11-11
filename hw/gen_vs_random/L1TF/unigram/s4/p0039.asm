.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnz cl
bt si, si
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
cmp al, sil
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
setnbe sil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 22
add al, 84 # instrumentation
btc ax, ax
btc rax, rsi
bts rax, rbx
and rax, 363226538
and rbx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rbx]
or rbx, 4
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx]
cmovs ecx, ebx
movzx edi, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
