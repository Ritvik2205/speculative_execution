.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rax, -2004802425
test cx, 401
or di, di
or bl, al
or al, al
and al, dl
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
and rax, -1701787862
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
bt di, cx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
bt si, 23
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
cmovns esi, esi
btc edx, ebx
xor cl, sil
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and al, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
