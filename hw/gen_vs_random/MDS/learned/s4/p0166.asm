.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
bts rax, rbx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
btr rdx, 54
xor dl, al
jmp .bb_0.1
.bb_0.1:
xor al, 34
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
xor rax, -345061362
or al, 74
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
or ax, -20176
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
