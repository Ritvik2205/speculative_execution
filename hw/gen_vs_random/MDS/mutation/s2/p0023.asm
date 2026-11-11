.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, rdx
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and bl, 49 # instrumentation
cmovbe rax, rcx
test cl, dl
not dl
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
cmovns rdi, rdx
bts edi, 248
bt rax, rsi
and cl, 46 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
xor rdi, -9
cmovle rsi, rbx
cmovnbe eax, edi
jmp .bb_0.2
.bb_0.2:
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
test rax, -363019044
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
and rax, -2039117613
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
