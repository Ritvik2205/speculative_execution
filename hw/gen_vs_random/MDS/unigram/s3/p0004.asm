.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rcx, -2
and al, 39 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
test rdx, rax
and dl, 8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ebx
btr rsi, rdx
jmp .bb_0.1
.bb_0.1:
or edx, ebx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
btc ebx, ecx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rdi
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 73
or al, cl
test sil, dil
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
test rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
