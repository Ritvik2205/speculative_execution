.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], 110
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
sbb dl, -23
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
add cl, 22 # instrumentation
cmovns rcx, rdi
test ecx, -1134698714
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16
adc sil, -18
setno sil
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
cmovl eax, esi
cmovnb di, ax
cmovp esi, edx
sub esi, -120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
