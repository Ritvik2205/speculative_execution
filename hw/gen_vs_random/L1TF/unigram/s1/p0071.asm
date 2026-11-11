.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdi]
xor bl, dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dil
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
sub dl, dil
and rbx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
setbe dil
add al, 121 # instrumentation
setnb sil
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
