.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edi, edx
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx], 65
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
cmp cl, sil
and rdi, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdi]
add eax, edx
sub di, cx
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rbx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rsi
xor bl, dl
setno cl
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
movzx edi, di
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
