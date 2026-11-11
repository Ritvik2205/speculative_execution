.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not cl
test al, 22
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 118
xor si, 91
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edx
or dl, -31
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
cmovp dx, cx
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], edi
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
or al, dl
xor dil, -124
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
or rax, -689609688
test cl, bl
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
