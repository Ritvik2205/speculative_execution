.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
and al, dl
bt si, 23
or al, al
bt di, cx
test rax, 1207043993
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and al, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
or bl, al
or di, di
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
xor cl, sil
and rax, 4
btc edx, ebx
test cx, 401
cmovns esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
