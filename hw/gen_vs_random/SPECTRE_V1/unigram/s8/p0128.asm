.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
add edx, 30
or rax, -3
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rsi], cx
setnb sil
movsx ax, cl
test al, 40
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, 110 # instrumentation
cmovb rdx, rdi
cmp bl, -114
and al, bl
test bl, -8
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], dx
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rbx
add cl, 43 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 59
neg bl
cmovnbe edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
