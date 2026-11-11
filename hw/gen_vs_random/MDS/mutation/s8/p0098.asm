.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, dl
xor cl, sil
btc edx, ebx
cmovns esi, esi
and al, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
test cx, 401
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
bt di, cx
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rax, 1886208862
bt si, 23
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
or di, di
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
test rax, 337705873
or bl, al
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
