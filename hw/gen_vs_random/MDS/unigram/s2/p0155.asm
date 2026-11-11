.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, al
xor cl, dl
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
cmovs si, di
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
and cx, si
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
bts bx, 3
or edi, -88
cmovp edi, ebx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 12
bt rbx, 241
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
cmovnbe rcx, rsi
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and dl, 23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
