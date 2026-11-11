.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
xor dl, bl
test bl, al
test eax, 645518295
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
or rcx, 30
and rbx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rbx]
xor dl, dil
jmp .bb_0.1
.bb_0.1:
add dl, sil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
