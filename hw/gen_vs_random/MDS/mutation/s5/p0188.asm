.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, -1523798580
or al, dl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 118
cmovp dx, cx
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
xor si, 80
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edx
test cl, bl
or dl, -89
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
xor dil, -5
test al, 127
not cl
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
