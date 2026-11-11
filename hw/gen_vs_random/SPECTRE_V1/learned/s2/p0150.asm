.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edx
sbb al, -127
bt si, di
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
adc al, cl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 2114064901
xor rdi, 31
setnbe bl
mul cl
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 1
movsx bx, cl
lea rcx, qword ptr [rax + rbx + 67]
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
cmp sil, 44
lea ax, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
