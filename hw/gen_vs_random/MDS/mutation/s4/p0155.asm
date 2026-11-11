.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and al, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
cmovns esi, esi
or bl, al
or di, di
xor cl, sil
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
test rax, 1214712583
btc edx, ebx
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
test cx, 401
and al, dl
bt si, 23
bt di, cx
or al, al
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
and rax, -2058103810
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
test sil, bl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
cmovnbe ecx, esi
test al, bl
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
