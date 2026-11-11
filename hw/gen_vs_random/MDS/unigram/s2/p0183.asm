.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rax, rdx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
bt si, dx
and al, dl
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rbx
and dil, 125
xor bl, -61
and al, -82 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
xor bl, dil
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdx
cmovno rax, rcx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edx
and rbx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], cx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -15
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
bt edx, eax
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
