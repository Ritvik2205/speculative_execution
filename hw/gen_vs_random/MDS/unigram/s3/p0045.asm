.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rdi, 129
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
cmovl si, dx
test bl, -9
cmovnz edx, ebx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and dl, -72 # instrumentation
not dl
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], edi
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 31
not dl
cmovo dx, bx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
