.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rax]
lea ebx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 69
and rsi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rsi]
adc rsi, 87
and rdi, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rdi]
setno al
cmovle rsi, rdi
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 112 # instrumentation
setl al
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 32
cmp dl, dil
add dil, -47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and sil, cl
bt dx, 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
