.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
and al, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
xor cl, sil
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
cmovns esi, esi
test rax, -2052112368
bt si, 23
or di, di
btc edx, ebx
and al, dl
or al, al
and rax, 41
bt di, cx
test cx, 401
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
