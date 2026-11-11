.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc bx, di
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
test cx, 401
and bl, -56 # instrumentation
cmovnle edi, ebx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
cmovbe bx, cx
bt esi, 3
cmovo rax, rdx
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], si
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rax
cmovbe dx, cx
or cx, 39
cmovb rsi, rbx
or al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
