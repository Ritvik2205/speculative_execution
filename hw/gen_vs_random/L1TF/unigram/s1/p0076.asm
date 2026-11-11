.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, dl
add cl, -121 # instrumentation
movsx bx, cl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
mov dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edi
not ebx
or ebx, ecx
cmovb edx, edx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], bx
setb dil
bt rbx, 41
and rcx, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rcx]
add cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
