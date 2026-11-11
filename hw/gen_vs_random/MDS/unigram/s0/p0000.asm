.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -78
and dil, -39
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ebx
not al
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], bx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
cmovp dx, si
jmp .bb_0.1
.bb_0.1:
and cl, -49 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
and si, dx
cmovno esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
