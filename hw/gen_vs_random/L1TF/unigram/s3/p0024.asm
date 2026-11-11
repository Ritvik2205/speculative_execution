.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, esi
cmp esi, esi
and dil, dil
add dil, sil
setno dil
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], di
cmovnbe rax, rcx
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
add bl, 62 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
add bl, -92 # instrumentation
setnz bl
or cl, 105
cmovnb ecx, ebx
lea rdi, qword ptr [rax]
lea di, qword ptr [rcx + rax]
xor edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
