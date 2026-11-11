.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -9
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and cx, -8
or si, 0b1000000000000000 # instrumentation
bsf si, si
xor al, al
xor ax, -23364
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
cmovnz rsi, rcx
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 80
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 44
and al, -54
test al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
