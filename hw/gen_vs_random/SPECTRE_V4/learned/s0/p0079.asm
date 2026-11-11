.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
xchg edx, ecx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
or dl, al
xor bx, 106
cmp bl, al
cmp rdi, 28
and di, -65
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
cmp al, 105
xor sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
