.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, -7150
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
cmovb rsi, rbx
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
btr rdx, 9
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rdi
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
btc ecx, 38
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
or sil, sil
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rsi]
cmovnle ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
