.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
not al
test al, -81
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
or dl, bl
jmp .bb_0.1
.bb_0.1:
or cl, 30
or al, -24
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and al, 106
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
test eax, 1838539683
test ecx, -1843375753
or cl, 6
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
or cl, al
xor rdx, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
