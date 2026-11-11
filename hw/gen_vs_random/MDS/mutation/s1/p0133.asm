.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -124
or al, dl
test al, 22
cmovp dx, cx
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
not cl
or rax, -141551502
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], edi
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edx
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
xor dil, -70
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
xor si, 80
test cl, bl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
or dl, -31
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
