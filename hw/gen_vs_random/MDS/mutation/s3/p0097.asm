.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
and rax, -636362975
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
test cx, 401
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
or di, di
bt di, cx
or al, al
test rax, -2052112368
and al, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
btc edx, ebx
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
bt si, 23
cmovns esi, esi
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
xor cl, sil
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
