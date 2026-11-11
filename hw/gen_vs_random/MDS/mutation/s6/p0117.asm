.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt di, cx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
and al, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
xor cl, sil
or al, al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
test cx, 401
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
test rax, -648054011
cmovns esi, esi
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
btc edx, ebx
and rax, 4
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and al, dl
or di, di
or bl, al
bt si, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
