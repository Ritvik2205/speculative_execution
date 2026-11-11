.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 40
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 57
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
and al, dl
bt eax, ebx
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and al, 82
and rdx, 4
bt cx, bx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rax
bt bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
