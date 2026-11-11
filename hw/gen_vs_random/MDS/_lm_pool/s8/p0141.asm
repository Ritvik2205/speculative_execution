.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 37
test ecx, -1843375753
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
test al, 91
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
jmp .bb_0.1
.bb_0.1:
and rax, 79
and dx, 60
or rdx, -109
xor rax, 459999114
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
bt di, cx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
