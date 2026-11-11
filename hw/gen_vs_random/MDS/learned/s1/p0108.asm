.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
test dl, sil
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -117
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
xor bl, cl
or cl, 6
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
xor bl, dl
xor al, 55
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
xor dl, sil
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
