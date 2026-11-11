.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, 115
and al, -64 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
cmovz rbx, rsi
btr di, 109
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
or eax, -1642752131
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -41
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -23
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rbx]
and eax, -872608366
and cx, di
and rdi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdi]
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
bt rax, rcx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
