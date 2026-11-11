.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 2
lea rdi, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
or dl, dl
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
or sil, -78
and dil, al
and al, cl
or al, -58
and bl, bl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
