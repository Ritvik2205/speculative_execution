.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz cx, ax
btr rbx, 193
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
xor sil, 110
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 90
test rsi, 38
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
test rax, 337705873
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
test bl, bl
jmp .bb_0.1
.bb_0.1:
xor dl, 8
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
or dl, cl
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
or bl, 100
bts rax, 77
or cl, al
and dl, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
