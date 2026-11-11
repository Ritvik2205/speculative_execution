.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 53
and al, -97 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
not cl
cmovle esi, eax
and rbx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
bts rdi, 130
cmovnbe rax, rax
test al, dl
cmovnle rax, rsi
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
or rdx, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
