.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rsi]
adc sil, 67
and rdx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdx]
add dil, cl
add bl, -97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or eax, ebx
lea esi, qword ptr [rax]
btr bx, 104
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 17
and rdx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdx]
imul rcx
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], 9
and cx, bx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
