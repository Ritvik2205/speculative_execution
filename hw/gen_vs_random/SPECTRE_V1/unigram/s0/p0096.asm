.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 48
cmovo eax, ebx
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
and al, al
add cl, 29 # instrumentation
setnb al
adc sil, bl
add bl, 36 # instrumentation
setnl sil
inc cx
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub ebx, eax
add cl, dl
cmovs di, dx
setbe cl
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
cmovnbe di, di
xor dl, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
