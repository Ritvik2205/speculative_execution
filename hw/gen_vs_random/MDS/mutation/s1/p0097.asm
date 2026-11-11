.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
test al, 66
cmovp dx, cx
test cl, bl
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edx
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], edi
not cl
or dl, -31
or al, dl
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 118
or rax, -1561934807
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
xor dil, -70
xor si, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
