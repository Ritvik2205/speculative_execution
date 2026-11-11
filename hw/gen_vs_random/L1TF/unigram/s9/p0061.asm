.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bx, 90
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 70
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
or rdx, 11
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
movsx rdi, di
or cx, dx
jmp .bb_0.1
.bb_0.1:
xchg eax, esi
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
lea ebx, qword ptr [rax + rsi]
add bl, 113 # instrumentation
setbe sil
test ax, 13284
cdq
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
