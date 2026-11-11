.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setbe dil
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], -76
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
add al, -113 # instrumentation
mov rdi, -9188947962549951402
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 29
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
test dl, 84
sbb si, ax
setnb bl
bt edi, 81
and edi, 57
lea ebx, qword ptr [rbx + rdx]
add bl, -92 # instrumentation
setnz al
and rbx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
