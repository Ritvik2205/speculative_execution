.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, -1931765367
and al, dl
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
and al, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
or al, al
xor cl, sil
test rax, -363019044
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
or bl, al
or di, di
cmovns esi, esi
bt di, cx
btc edx, ebx
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
test cx, 401
bt si, 23
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
