.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
sbb cl, dl
not bl
xor cl, al
cmovb ebx, edi
test rax, -991273825
add dl, -18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rax
and ebx, eax
setnle bl
lea cx, qword ptr [rsi]
add si, 98
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdi
and dl, cl
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
