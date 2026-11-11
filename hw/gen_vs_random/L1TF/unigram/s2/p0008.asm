.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rdx, 81
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
movzx edx, sil
add dl, -48 # instrumentation
lea edi, qword ptr [rdi + rax]
mov cl, dil
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
setnbe sil
xor di, cx
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
imul rsi, rdx, 40
add ebx, 87
mov dil, al
lea cx, qword ptr [rcx + rdx + 77]
sub dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
