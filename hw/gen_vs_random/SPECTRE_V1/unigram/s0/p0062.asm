.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb bx, dx
mul rdi
add bl, sil
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 74
sbb di, 8
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 76
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], si
bt bx, 27
lea ecx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
