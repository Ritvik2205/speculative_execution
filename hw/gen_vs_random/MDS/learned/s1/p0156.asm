.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs cx, bx
xor cl, 15
or al, 54
test bl, cl
and al, 84
or al, 37
or cl, al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
or esi, -110
or dl, al
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
or bl, -62
test rcx, -613256812
and rbx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
