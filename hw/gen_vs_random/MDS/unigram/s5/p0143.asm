.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not ecx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
xor rax, -843636050
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and al, 87
and al, -86 # instrumentation
cmovns bx, di
not dl
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], di
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
test dil, -80
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdx], si
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rdi
or dl, dl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
cmovnz ebx, ebx
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
xor dil, 8
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
