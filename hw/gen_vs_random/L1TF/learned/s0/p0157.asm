.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
sbb dl, cl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 96
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
or al, sil
add bx, 85
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 18
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub ecx, 56
xor al, dl
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and al, -99
lea di, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
