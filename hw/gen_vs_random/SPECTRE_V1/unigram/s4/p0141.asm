.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe dx, dx
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
add dl, 6 # instrumentation
adc rax, -384715932
add cl, 29 # instrumentation
setnb cl
xchg rax, rdi
add al, 112 # instrumentation
setl al
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
xchg eax, ecx
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
movzx si, al
cmp di, 50
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 41
imul rcx, rbx
add bl, 112 # instrumentation
setnbe sil
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 52
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
xchg edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
